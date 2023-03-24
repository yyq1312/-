	
	//-------------宁师傅全选
	//多选框操作
			function testCheckBox() {
				//获取所有的多选元素对象数组
				var fa = document.getElementsByName("fav");
				//遍历数组
				for (var i = 0; i < fa.length; i++) {
					if (fa[i].checked) {
						alert(fa[i].value + ":" + fa[i].checked);
					}
				}
			}
			//全选
			function testCheckBox2() {
				//获取所有的多选元素对象数组
				var fa = document.getElementsByName("fav");
				for (var i = 0; i < fa.length; i++) {
					fa[i].checked = true;
				}
			}
			//反选
			function testCheckBox3() {
				//获取所有的多选元素对象数组
				var fa = document.getElementsByName("fav");
				for (var i = 0; i < fa.length; i++) {
					fa[i].checked = !fa[i].checked;
				}
			}

			//操作下拉框
			function testSel() {
				var sel = document.getElementById("address");
				//alert(sel.value);
				//获取option对象集合
				var os = sel.options;
				for (var i = 0; i < os.length; i++) {
					if (os[i].selected) {
						alert(os[i].value + ":" + os[i].text);
					}
				}
			}
	
//--------------Qyf全选


			$(document).ready(function() {
				$("#Advanced").click(function() {
					$("#Advancedone").toggle();
				});

				$("#AdvancedTwo1").click(function() {
					$("#Advancedtwo1").toggle();
				});

				$("#AdvancedThree").click(function() {
					$("#Advancedthree").toggle();
				});

				$("#Gaoji").click(function() {
					$("#gaojione").toggle();
				});
			});
			
			/** 绑定全选事件
			 *  eg: checkAllInit($("#checkAll"),$("input[name='subCheckName']"));
			 * @param checkAllObj 全选jquery对象
			 * @param subCheckObjs 子选项jquery对象数组
			 */
			function checkAllInit(checkAllObj, subCheckObjs) {
				debugger
				var ischecked = checkAllObj.prop("checked");
				subCheckObjs.each(function(i) {
					$(this).prop("checked", ischecked);
				});
			
				// 绑定全选事件
				checkAllObj.off("click").on("click", function() {
					var isAllchecked = checkAllObj.prop("checked");
					subCheckObjs.each(function(i) {
						$(this).prop("checked", isAllchecked);
					});
				});
			
				// 绑定子项勾选触发全选项check
				subCheckObjs.each(function(i) {
					$(this).off("click").on("click", function() {
						if (!this.checked) {
							checkAllObj.prop("checked", false);
						} else {
							var isCheckAllType = true;
							subCheckObjs.each(function(i) {
								console.log(this.checked);
								if (!this.checked) {
									isCheckAllType = false;
								}
							});
							checkAllObj.prop("checked", isCheckAllType);
						}
					});
				});
			}
			
			
			
			
			$(function() {
				//示例
				checkAllInit($("#checkAll"), $("input[id='subCheckName']"));
			});
			
			