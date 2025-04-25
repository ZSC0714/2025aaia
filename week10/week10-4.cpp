// week10-4.cpp
// Leetcode 1399. Count Largest Group
class Solution {
public:
    int countLargestGroup(int n) {
        int a[100] = {};
        int largest = 0;
        for(int i=1; i<=n; i++){ // 1..n人類的迴圈
            int now = i; // 迴圈前面 total 是 0
            int total = 0;
            while(now>0){
                // 迴圈哩，把 total 一職加起來
                total += now % 10; //剝皮 now %10 把每一位數，加到 total 裡
                now = now / 10; // 剝皮後，now 變小了
            }
            a[total]++; // 迴圈裡面，要統計 total 的出現次數
            if( a[total] > largest ) largest = a[total];
        }
        int ans = 0; // 最大的數的那些群，有幾群?
        for(int i=0; i<100; i++){
            if(a[i]==largest) ans++; // 如果 a[i] 是最大的數的那群，就多1群
        }
        return ans;
    }
};
