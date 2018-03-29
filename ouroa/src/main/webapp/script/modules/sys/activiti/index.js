/**
 * 用户管理
 */
var vm = new Vue({
    el: '#oa',
    data: {},
    methods: {
        loadTable: function () {
            var columns = [
                {title: 'id', field: 'id'},
                {title: '名称', field: 'name'},
                {title: '分类', field: 'category'},
                {
                    title: '发布时间', field: 'deploymentTime',
                    formatter: function (value) {
                        return moment(value).format('YYYY年MM月DD日 hh:mm:ss');
                    }
                }
            ];
            var option = T.btTableOption;
            var allColumns = option.columns.concat(columns);//合并列
            option.columns = allColumns;
            option.url = '/activiti/list.action';
            
            $('#table').bootstrapTable(option);
        },
        deleteBatch: function () {
            T.deleteMoreItem('id');
        }
    }
});

vm.loadTable();