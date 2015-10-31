1.// extend the 'equals' rule
2.$.extend($.fn.validatebox.defaults.rules, {
3.   eqPassword: {  //扩展验证两次密码
4.        validator: function(value,param){
5.            return value == $(param[0]).val();
6.        },
7.        message: '密码不一致！.'
8.    }
9.});


