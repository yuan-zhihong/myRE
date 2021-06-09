<%@ page language="java"
	import="java.awt.*"
	import="java.awt.image.BufferedImage"
	import="java.util.*"
	import="javax.imageio.ImageIO"	
	pageEncoding="utf-8"%>
<%
	response.setHeader("Cache-Control","no-cache"); 
	//定义一个包含数字和字符的数组
	char[] array = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 
					'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 
					'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 
					'u', 'v', 'w', 'x', 'y', 'z'};	
	// 在内存中创建图象 
	int width = 60, height = 20;
	BufferedImage image = new BufferedImage(width, height,
		BufferedImage.TYPE_INT_RGB);
	//获取画笔
	Graphics g = image.getGraphics();
	//设定背景色 
	g.setColor(new Color(200, 200, 200));
	g.fillRect(0, 0, width, height);
	//取随机产生的验证码(4位数字和字符的组合) 
	String randStr = "";
	for(int i=0;i<4;i++){
		int pos = Math.round((float)Math.random()*(array.length-1));
		randStr += array[pos];
	}
	//将验证码存入session
	session.setAttribute("randStr", randStr);
	//将验证码显示到图象中 
	g.setColor(Color.black);
	g.setFont(new Font("", Font.PLAIN, 20));
	g.drawString(randStr, 10, 17);
	// 随机产生100个干扰点，使图象中的验证码不易被其他程序探测到 
	Random rnd = new Random();
	for (int i = 0; i < 100; i++){
		int x = rnd.nextInt(width);
		int y = rnd.nextInt(height);
		g.drawOval(x, y, 1, 1);
	}
	// 输出图象到页面 
	ImageIO.write(image, "JPEG", response.getOutputStream());
	out.clear();
	out = pageContext.pushBody();
%>
