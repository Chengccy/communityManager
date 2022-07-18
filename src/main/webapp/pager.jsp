<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="layui-card-body ">
	<div class="page">
		<%--上一页 --%>
		<c:if test="${currpage<=1 }">
			<a href="#" class="previous" style="cursor:no-drop;">上一页</a>
		</c:if>
		<c:if test="${currpage>1 }">
			<a href="companyServlet?action=getAllCompany&pageNum=${currpage-1}" class="previous">上一页</a>
		</c:if>
		<c:if test="${pagecount<6}">
			<c:set  var="begin"   value="1"  />
			<c:set  var="end"   value="${pagecount }"  />
		</c:if>
		<!-- 6页以上 -->
		<c:if test="${pagecount>=6 }">
			<!-- 6个格子   -2   +1 -->
			<c:set   var="begin"   value="${currpage-2 }"/>
			<c:set   var="end"   value="${currpage+3 }"/>

			<!-- 如果 beigin  <1   -->
			<c:if test="${begin <1 }">
				<c:set   var="begin"   value="1"/>
				<c:set   var="end"   value="${begin +5 }"/>
			</c:if>
			<!-- 如果 end  >pages -->
			<c:if test="${end >pagecount }">
				<c:set   var="end"   value="${pagecount }"/>
				<c:set   var="begin"   value="${end-5 }"/>
			</c:if>
		</c:if>
		<!-- 生成格子 -->
		<c:forEach  begin="${begin }"  end="${end }"  var="i">
			<c:if test="${currpage ==i}">
				<a href="companyServlet?action=getAllCompany&&pageNum=${i}" style="border: none"><span class="current">${i}</span></a>
			</c:if>
			<c:if test="${currpage !=i}">
				<a href="companyServlet?action=getAllCompany&&pageNum=${i}" class="number">${i}</a>
			</c:if>

		</c:forEach>
		<c:if test="${currpage>=pagecount }">
			<a href="#" class="next" style="cursor:no-drop;">下一页</a>
		</c:if>
		<c:if test="${currpage<pagecount }">
			<a href="companyServlet?action=getAllCompany&pageNum=${currpage+1}" class="next">下一页</a>
		</c:if>
	</div>
</div>