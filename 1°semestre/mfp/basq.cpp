#include <bits/stdc++.h>
using namespace std;

int main(void){
    int team[101], pont[101];
    char t, w, m, e, v1, v2, a;
    int n;
    //int p1, p2;
    //p1 = 0;
    //p2 = 0;
    cin >> n;
    for(int i = 0; i < n; i++){
        cin >> t >> w >> m >> e >> v1 >> team[i]; 
        cin >> v2 >> a >> pont[i];
    }






   // for(int i = 0; i < n; i++){
     //   if(team[i]==1){
       //     p1 += pont[i];
       // }else{
         //   p2 += pont[i];
        //}
    //}
    //cout << p1 << " X " << p2 << "\n";
    cout << team[0] << pont[0];
    return 0;
}