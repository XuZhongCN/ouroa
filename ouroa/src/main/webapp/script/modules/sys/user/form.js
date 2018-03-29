/**
 * 用户管理
 */
var vm = new Vue({
    el: '#oa',
    data: {
        title: null,
        user: {
            status: 1,
            roleIdList: []
        },
        roleList: {}
    },
    methods: {
        init: function () {
            vm.getRoleList();
            if (T.hasP('add')) {
                vm.add();
            }
            if (T.hasP('edit')) {
                vm.edit();
            }
        },
        add: function () {
            vm.title = '新增';
        },
        edit: function () {
            vm.title = '修改';
            var userId = T.p('userId');
            if (userId == null) {
                return;
            }
            $.get('info/' + userId, function (r) {
                vm.user = r.user;
            });
        },
        saveOrUpdate: function () {
            var url = vm.user.userId == null ? '/sys/user/addUser.action' : '/sys/user/updateUser.action';
            $.ajax({
                type: 'POST',
                url: url,
                data: JSON.stringify(vm.user),
                success: function (r) {
                    if (r.code === 0) {
                        layer.alert('操作成功', function (index) {
                            window.location.href = 'index';
                        });
                    } else {
                        layer.alert(r.msg);
                    }
                }
            });
        },
        getRoleList: function () {
            //$.get("../../sys/role/select_all", function (r) {
            
            //$.get("/sys/role/getRoles.action", function (r) {
            //    vm.roleList = r.roleList;
            //});
        }
    }
});
vm.init();