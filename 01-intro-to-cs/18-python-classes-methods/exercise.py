class Circle(object):
    def __init__(self, radius):
        """ Initializes self with radius """
        # your code here
        self.radius = radius

    def get_radius(self):
        """ Returns the radius of self """
        # your code here
        return self.radius

    def __add__(self, c):
        """ c is a Circle object
        Returns a new Circle object whose radius is
        the sum of self and c's radius """
        # your code here
        return Circle(self.radius + c.radius)

    def __str__(self):
        """ A Circle's string representation is the radius """
        # your code here
        return f"Circle object of radius {self.radius}"


c1 = Circle(5)
c2 = Circle(3)
c3 = c1 + c2  # New Circle with radius 5 + 3 = 8

print(c3)  # Output: Circle object of radius 8