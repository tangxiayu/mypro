1.// extend the 'equals' rule
2.$.extend($.fn.validatebox.defaults.rules, {
3.   eqPassword: {  //��չ��֤��������
4.        validator: function(value,param){
5.            return value == $(param[0]).val();
6.        },
7.        message: '���벻һ�£�.'
8.    }
9.});


