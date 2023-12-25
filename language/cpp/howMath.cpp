using namespace std;
class point
{
public:
    point(double xx = 0, double yy = 0) : x(xx), y(yy) { cout << "POINT"; }

private:
    double x, y;
};
class circle
{
public:
    circle(double x = 0, double y = 0, double rr = 1) : c(x, y), r(rr) { cout << "CIRCLE"; }

private:
    point c;
    double r;
};