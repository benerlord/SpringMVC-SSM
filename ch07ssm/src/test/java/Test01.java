import java.util.*;

public class Test01 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int x0 = 0;
        int y0 = 0;
        int area = 0;
        // 接收第一行第一个数据groups，表示有多少组数据
        int groups = scanner.nextInt();
        // 接收第二个数据end, 表示横坐标的终点
        int end = scanner.nextInt();
        // 接收各组数据，第一个表示横坐标x，第二个表示纵坐标偏移量yp
        for (int i = 0; i < groups; i++) {
            int x = scanner.nextInt();
            int yp = scanner.nextInt();
            // 计算面积，每接收一组数据进行一次计算
            area += (x-x0)*Math.abs(y0);
            x0 = x;
            y0 += yp;
        }
        // 接收完数据后，判断是否为横坐标终点，计算最后总的面积
        if (end > x0) {
            area += (end-x0)*Math.abs(y0);
        }
        System.out.println("面积:" + area);
    }
}
