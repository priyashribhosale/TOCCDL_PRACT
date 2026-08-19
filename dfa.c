#include<stdio.h>
#include<string.h>
int main(){
char str[100];
int i,len;
int count0=0,count1=0;
printf("Enter a binary string:");
scanf("%s",str);
len=strlen(str);

if(len==0)
{
printf("string rejected\n ");
return 0;
}
 
for(i=0;i<len;i++)
{
if (str[i]=='0')
   count0++;
else if (str[i]=='1')
  count1++;
else{
 printf("invalid input!Enter only  0 and 1\n");
return 0;
}
}

if(count0 % 2==0 && count1% 2==0)
printf("string Accepted\n");
else
printf("String Rejected\n");
return 0;
}


