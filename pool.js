//创建mysql连接池
const mysql=require('mysql');
 pool=mysql.createPool({
	host:'127.0.0.1',
	// port:'3306',
	user:'root',
	password:'',
	database:'luckyhome',
	connectionLimit:20
});
console.log("数据库连接池创建完成");
//把创建好的链接池导出
module.exports=pool;