/**
 * 菜单管理
 */
var vm = new Vue({
    el: '#oa',
    data: {
        title: null,
        role: {},
        ztree: null,
        setting: {
            data: {
                simpleData: {
                    enable: true,
                    idKey: 'menuId',
                    pIdKey: 'parentId',
                    rootPId: null
                },
                key: {
                    url: 'nourl',
                    name: 'menuName'
                }
            },
            check: {
                enable: true,
                nocheckInherit: true
            }
        }
    },
    methods: {
        init: function () {
            vm.getMenu();
            var text = $("#flag").val();
            console.log(text);
            if (text == 'edit') {
                vm.edit();
            }
        },
        add: function () {
            vm.title = '新增';
        },
        edit: function () {
            vm.title = '修改';
            
            var roleId = $("#roleId").val();
            console.log(roleId);
            //var roleId = T.p('id');
            if (roleId == null) {
                return;
            }
            
            $.get('info.action?roleId=' + roleId, function (r) {
                vm.role = r.data;
                //勾选角色所拥有的菜单
                var menuIds = vm.role.menuIdList;
                for (var i = 0; i < menuIds.length; i++) {
                    var node = vm.ztree.getNodeByParam('menuId', menuIds[i]);
                    vm.ztree.checkNode(node, true, false);
                }
            });
        },
        saveOrUpdate: function () {
            
            //获取选择的菜单
            var nodes = vm.ztree.getCheckedNodes(true);
            var menuIdList = new Array();
            for (var i = 0; i < nodes.length; i++) {
                menuIdList.push(nodes[i].menuId);
            }
            vm.role.menuIdList = menuIdList;
            
            //console.log(vm.role);
            var url = vm.role.roleId == null ? '/sys/role/addRole.action' : '/sys/role/updateRole.action';
            $.ajax({
                type: 'POST',
                url: url,
                data: JSON.stringify(vm.role),
                success: function (r) {
                    if (r.code === 1) {
                        layer.alert('操作成功', function (index) {
                            window.location.href = '/sys/role/index.action';
                        });
                    } else {
                        layer.alert(r.data);
                    }
                }
            });
        },
        
        getMenu: function () {
            //加载菜单树
            $.ajax({
                type: 'get',
                url: '../../sys/menu/getAllMenuForTree.action',
                async: false,
                success: function (r) {
                    FastJson.format(r);
                    vm.ztree = $.fn.zTree.init($('#menuTree'), vm.setting, r.data);
                    //展开所有节点
                    vm.ztree.expandAll(true);
                }
            });
        }
    }
});

vm.init();