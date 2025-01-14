//STL é standard template library

struct Pessoa{
    string nome;
    int idade;
    string endereco;
};

Pessoa caio;
caio.nome = "caio"
cin >> caio.idade;
vector<Pessoa> vec;

/*Pilha: tira do topo e só pega do topo*/

stack<int> pilha;
stack<Pessoa> pilha1;

pilha.push(1); //colocar
pilha.pop(); //excl elemento do topo
int at = pilha.top(); //inteiro atualmente no topo da pilha
pilha.size();
//cada operação dessa é O(1)

/*FILA*/
queue<int> fila;
queue<Pessoa> q1;
fila.size();
fila.front();
fila.push(a);

/*DEQUE*/
deque<int> f;
for int i=1; i<=3; i++){
    int at; cin >> at;
    f.push_front(at);
}
for int i=1; i<=2; i++){
    int a; cin >> a;
    f.push_back(a);
}
for (int i=1; i<=2; i++){
    cout << "primeiro " << f.front() << "ultimo " << f.back() << "\n";
}
//deque pode ser  mais lento

/*PRIORITY QUEUE*/
/*
O(log n) acesso ao topo, ao final, respeitando a ordenação. Ordenação faz com que operação de adição gaste O (log n).
remoção não gasta pq só remove o maior valor, q tá no final, e não tem que reordenar.
*/
priority_queue<int> fila; //decrescente
priority_queue<int, vector<int>, greater<int>> pq;

pq.push_top(3); //O(log n)
pq.pop(); //O(1)
pq.size(); //O(1)

/*MAP*/
//{1, 4} chave 1, valor 4. ordnado pela chave, acessar quem tá no meio por find

map <int, int> mp;
map <Pessoa, Pessoa> p;
map <pair <int, int>, int> mp;
mp.insert({1, 2});
mp [1] = 2; //msm coisa q o insert
mp.find (1); //retorna o q tem naquela chave
mp.end() //valor no final, retorna se o valor no find não existir
mp.erase(1);
mp.count(1);
mp.size();

for (auto it = mp.begin(); it != mp.end(); it++) /*auto vai ser o tipo do valor q for designado */{
    int a = (*it).second;
    int key = (*it).first;
}

sort(v, v+5); //
sort (v+1, v+1+n); //indexado começando no 1 e indo até n
sort (v+1, v+1+n, cmp); //ordenação padrão (crescente). cmp função q compara e retorna bool

