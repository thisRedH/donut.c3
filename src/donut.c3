             import std::io, std
          ::math; def si=math::sin;
       def co=math::cos;fn int main(){
      float a,b,i,j,c,d,e,f,g,h,p,l,m,n
    ,t;int k,x,y,o,r; float[1760]z; char[
   1760]q;io::print("\x1b[2J");for(;;){mem
  ::set(&q[0], 32,1760); mem::set(&z[0], 0,
 7040); for(j=0;j <       6.28;j+=0.07){for(
 i=0;i< 6.28;i +=           0.02){c=si(i);d=
 co(j);e=si(a);f             =si(j);g=co(a);
 h=d+2;p=1/(c*h*             e+f*g+5);l=co(i
 );m=co(b);n=si(             b);t=c*h*g-f*e;
 x=(int)(40+30*p*           (l*h*m-t*n));y=(
 int)(12+15*p*(l*h*       n+t*m));o=x+80*y;r
  =(int) (8*(f*e-c*d*g)*m-c*d*e-f*g-l*d*n);
   if(22>y&&y>0&&x>0&&80>x&&p>z[o]){z[o]=p
    ;q[o]=".,-~:;=!*#$@"[r>0?r:0];}}}io::
      print("\x1b[H"); for(k=0;k<1761;k
       ++){io::putchar (k%80?q[k]:10);
          a+=0.00004; b +=0.00002;}
             }/*2024@thisRedH*/}
