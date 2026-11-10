class Pixels:
    def __init__(self, width, height, channels, data):
        self.width = width
        self.height = height
        self.channels = channels
        self.data = data

    def crop(self, area):
        left, top, right, bottom = area
        assert 0 <= left <= right <= self.width and 0 <= top <= bottom <= self.height
        stride = self.width * self.channels
        data = b''.join(self.data[row * stride + left * self.channels:row * stride + right * self.channels] for row in range(top, bottom))
        return Pixels(right - left, bottom - top, self.channels, data)

    def getdata(self):
        return (tuple(self.data[index:index + 3]) for index in range(0, len(self.data), self.channels))

    def tobytes(self):
        return self.data

