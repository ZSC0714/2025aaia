// week09-1.cpp
// LeetCode 38. Count and Say 數字連續出現，就模一RLE方法[編碼]成[數字+字母]的形成
class Solution {
public:
    string countAndSay(int n) {
        if(n==1) return "1";
        string prev = countAndSay(n-1);
        string ans = "";
        char prevC = prev[0];
        int prevN = 1;
        for(int i=1; i<prev.length(); i++){
            if(prevC == prev[i]) prevN++;
            else{
                ans += string(to_string(prevN)) + prevC;
                prevC = prev[i];
                prevN = 1;
            }
        }
        ans += string(to_string(prevN)) + prevC;
        return ans;
    }
};
