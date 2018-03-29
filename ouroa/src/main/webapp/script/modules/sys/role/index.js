/**
 * 菜单管理
 */
var vm = new Vue({
    el: '#oa',
    data: {},
    methods: {
        loadTable: function () {
            
            var columns = [
                {title: '角色ID', field: 'roleId'},
                {title: '角色名称', field: 'roleName'},
                {title: '备注', field: 'remark'},
                {
                    title: '创建时间', field: 'createTime', formatter: function (value) {
                    return moment(value).format('YYYY年MM月DD日,hh:mm:ss');
                }
                },
                {
                    title: '操作', field: 'roleId',
                    formatter: function (value, row, index) {
                        var edit = '<a href="/sys/role/form.action?edit&roleId=' + value + '" class="btn btn-success btn-xs">编辑</a>';
                        return edit;
                    }
                }
            ];
            var option = T.btTableOption;
            var allColumns = option.columns.concat(columns);
            option.columns = allColumns;
            option.url = 'findAllRole.action';
            $('#table').bootstrapTable(option);
        },
        deleteBatch: function () {
            T.deleteMoreItem('roleId');
        }
    }
});

vm.loadTable();