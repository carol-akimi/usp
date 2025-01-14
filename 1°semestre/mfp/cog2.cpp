#include <bits/stdc++.h>
using namespace std;


int main(void){
    int a1, a2, b1, b2, c1, c2, d1, d2, l;
    cin >> a1 >> a2 >> b1 >> b2 >> c1 >> c2 >> d1 >> d2;
    if(a1==b1){
        if(b2>a2){
            l = b2 - a2;
            cout << l*l << "\n"; 
        }else {
            l = a2 -b2;
            cout << l*l << "\n"; 
        }
    }if(a1==c1){
        if(c2>a2){
            l = c2 - a2;
            cout << l*l << "\n"; 
        }else {
            l = a2 -c2;
            cout << l*l << "\n"; 
        }
    }if(a1==d1){
        if(d2>a2){
            l = d2 - a2;
            cout << l*l << "\n"; 
        }else {
            l = a2 -d2;
            cout << l*l << "\n"; 
        }
    }
    return 0; 

}