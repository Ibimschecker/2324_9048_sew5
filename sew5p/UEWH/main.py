'''
    @Author Nik Sauer
'''
class BritishWeight:
    '''
    >>> bw1 = BritishWeight(pounds=27)
    >>> bw2 = BritishWeight(pounds=28)
    >>> bw1
    1 st 13 lb
    >>> bw1 + bw2
    3 st 13 lb
    >>> bw1 + BritishWeight(0, 4)
    2 st 3 lb
    '''

    def __init__(self, stones = 0, pounds = 0):
        self.pounds = pounds + 14 * stones

    def __str__(self):
        return f'{self.pounds // 14} st {self.pounds % 14} lb'

    def __add__(self, other):
        return BritishWeight(pounds=self.pounds + other.pounds)

    def __repr__(self):
        return self.__str__()