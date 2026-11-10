package com.ayrvokan.widgets;

import android.content.Context;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;

final class WidgetRegistry {
    final List<JSONObject> widgets = new ArrayList<>();
    WidgetRegistry(Context context) throws Exception {
        for (String directory : context.getAssets().list("widgets")) {
            try (InputStream input = context.getAssets().open("widgets/" + directory + "/widget.json")) {
                JSONObject definition = new JSONObject(LinuxRuntime.readAll(input));
                if (!"ayrvokan.widget/1".equals(definition.optString("schema"))) throw new IllegalStateException("Unsupported widget format");
                widgets.add(definition);
            }
        }
    }
    JSONObject get(String id) {
        for (JSONObject widget : widgets) if (widget.optString("id").equals(id)) return widget;
        throw new IllegalArgumentException("Unknown widget: " + id);
    }
}
