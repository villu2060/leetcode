class Solution:
    def isAnagram(self, s: str, t: str) -> bool:
        if len(s) != len(t):
            return False

        else:
            char={}
            for i in range(len(s)):
                char[s[i]]=char.get(s[i], 0)+1
                char[t[i]]=char.get(t[i], 0)-1

        return all(count==0 for count in char.values())

        

