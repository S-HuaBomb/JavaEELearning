package someTest;

public class Multi {
    public static void main(String[] args) {
        int i,j;
        //左上
        for(i=1;i<=9;i++)
        {
            for(j=1;j<=i;j++)
            {
                System.out.print(j+"*"+i+"=");
                System.out.printf("%-4d",i*j);
            }
            System.out.println();
        }
        System.out.println();//空一行，方便看清
        //左下
        for(i=9;i>=1;i--)
        {
            for(j=1;j<=i;j++)
            {
                System.out.print(j+"*"+i+"=");
                System.out.printf("%-4d",i*j);
            }
            System.out.println();
        }
        //右上
        for(i=1;i<=9;i++)
        {
            for(j=i;j<9;j++)
            {
                System.out.print("\t");
            }

            for(j=i;j>0;j--)
            {
                if((i*j)<10)
                    System.out.print(" "+j+"*"+i+"="+(i*j)+"\t");
                else
                    System.out.print(+j+"*"+i+"="+(i*j)+"\t");
            }
            System.out.println();
        }
        System.out.println();//空一行，方便看清
        //右下
        for(i=9;i>0;i--)
        {
            for(j=0;j<9-i;j++)
            {
                System.out.print("\t");
            }

            for(j=i;j>0;j--)
            {
                if((i*j)<10)
                    System.out.print(" "+j+"*"+i+"="+(i*j)+"\t");
                else
                    System.out.print(+j+"*"+i+"="+(i*j)+"\t");
            }
            System.out.println();
        }
    }
}
