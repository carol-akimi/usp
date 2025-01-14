/*soma de prefixos: guarda os valores (1 3 4 5 10 2) v[0]= 1/v[1]=4/v[2]=8 */
/*pref[i]=pref[i-1]+v[i]*/

#include <iostream>
using namespace std;

const int maxn = 1e5 + 5;
int pref[maxn] ;

int main(){
    int n; cin >> n;
    int x; cin >> x;
    int ans = 0;
    map <int, int> mp;
    mp[0] = 1;

    for(int i = 1; i <= n; i++){
        int a; cin >> a;
        pref[i] = pref[i-1] + a;
        ans += mp[pref[i]-x];
        mp[pref[i]] = 1;

    }
    cout << ans << "\n";
    return 0;
}


int main(){
    int ini = 1, fim = 100, mid;
    while(ini <= fim){ //se ini atrapassa o fim, não tem sentido 
        mid = (ini + fim)/2;
        cout << mid << endl;
        int a; cin >> a;
        // = 0
        // > 1
        // < -1
        if(a==0){
            cout << mid << "\n";
            break;
        }
        else if(a == 1){
            fim = mid - 1;
        }
        else ini = mid + 1;
    }
    return 0;
}
