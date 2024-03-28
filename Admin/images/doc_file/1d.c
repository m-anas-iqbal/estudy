#include<stdio.h>


void main(void)
{
	
	/*
	int number[5] = {2,4,6,8,9};
	int i;
	


	for(i=0; i<5; i++)
	{
	
		printf("%d %d\n",i,number[i]);
	}
	*/
	
	
	
	
	
	
  /* 2D array declaration*/
  
   int arr[2][3];
  
   /*Counter variables for the loop*/
   int i, j;
   
   for(i=0; i<2; i++)
	{
      for(j=0;j<3;j++)
		{
         	printf("Enter value for disp[%d][%d]:", i, j);
         	scanf("%d", &arr[i][j]);
      	}
    }
	
 	
    for(i=0; i<2; i++) 
	{
      for(j=0;j<3;j++) 
	  {
         printf("%d ", arr[i][j]);
         if(j==2)
		 {
            printf("\n");
         }
      }
	}
}
