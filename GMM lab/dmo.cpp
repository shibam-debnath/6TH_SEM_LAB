// ! UNION FIND

//* UNION -> TC : O(4*alpha)
// step 01 : find ultimate par of u and v let's say pu and pv
// step 02 : find rank of those pu and pv
// step 03 : connect smaller rank with larger rank and if both rank are
//           same we can connect any one with other one

// maintain two array -> par and rank

//* NOTE :
// to check whether two nodes belong to same component in logarithmic time
// just find ultimate par of both nodes
// if they are same => then same connected component
// else different connected component

// 1
//  \
//   2
//    \
//     3

// * PATH COMPRESSION
// here par[3]=2 and par[2]=1 but while calculating ultimate par
// ult par of [3] = 1 and all the elements in the path i.e. 3,2 and 1 will have
// the same ultimate par as 1 . Store this so that we don't have to calculate again

// Thus we can calculate the above in constant time

#include <bits/stdc++.h>
using namespace std;
class DisSet
{
    vector<int> par, size;

public:
    DisSet(int n)
    {

        // initialization
        par.resize(n + 1);
        size.resize(n + 1);
        for (int i = 0; i <= n; i++)
        {
            par[i] = i;
            size[i] = 1;
        }
    }

    int FindUltPar(int node)
    {
        // found ultimate parent
        if (node == par[node])
            return node;

        // PATH COMPRESSION STEP
        return par[node] = FindUltPar(par[node]);
    }

    void unionBySize(int u, int v)
    {
        // find ult par of both
        int ulp_u = FindUltPar(u);
        int ulp_v = FindUltPar(v);

        // if both same => same connected comp
        if (ulp_u == ulp_v)
            return;

        // connect th smaller one with larger one always and update size
        if (size[ulp_u] < size[ulp_v])
        {
            par[ulp_u] = ulp_v;
            size[ulp_v] += size[ulp_u];
        }
        else
        {
            par[ulp_v] = ulp_u;
            size[ulp_u] += size[ulp_v];
        }
    }
};
int main()
{

    DisSet dd(7);

    dd.unionBySize(1, 2);
    dd.unionBySize(2, 3);
    dd.unionBySize(4, 5);
    dd.unionBySize(6, 7);
    dd.unionBySize(5, 6);
    // if 3 and 7 same or not
    if (dd.FindUltPar(3) == dd.FindUltPar(7))
    {
        cout << "Same\n";
    }
    else
        cout << "Not same\n";

    dd.unionBySize(3, 7);
    if (dd.FindUltPar(3) == dd.FindUltPar(7))
    {
        cout << "Same\n";
    }
    else
        cout << "Not same\n";

    return 0;
}
