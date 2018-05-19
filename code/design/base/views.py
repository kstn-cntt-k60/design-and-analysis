class ActiveStatus:
    def __init__(self):
        self.homepage = ""
        self.search = ""

    def set_homepage(self):
        self.homepage = "active"
        self.search = ""

    def set_search(self):
        self.homepage = ""
        self.search = "active"
