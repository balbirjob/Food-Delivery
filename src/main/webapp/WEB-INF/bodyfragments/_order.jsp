<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="crt"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
<div class="container">
	<br>
	<br>
	<br>


	
	<sf:form method="post"
		action="${pageContext.request.contextPath}/ctl/order/saveOrder"
		modelAttribute="form">
 
		<div class="card">
			<h5 class="card-header"
				style="background-color: #18334f; color: white;">Check Out</h5>
			<div class="card-body">
				<div class="row g-3">
					<div class="col-md-5 col-lg-4">
						<h4 class="d-flex justify-content-between align-items-center mb-3">
							<span class="text-muted">Item Detail</span>
						</h4>

						<table class="table table-bordered border-primary">
							<thead>
								<tr>

									<th scope="col">Image</th>
									<th scope="col">Name</th>
									<th scope="col">Price</th>
									<th scope="col">Quantity</th>
									<th scope="col">Total</th>
								</tr>
							</thead>
							<tbody>
								<c:set var="totalp" value="${0}" />
								<c:forEach items="${cList}" var="ct" varStatus="cart">
									<tr>
										<td scope="row"><img
											src="<c:url value="/ctl/product/getImage/${ct.product.id}" />"
											width="100px" height="100px"></td>
										<td scope="row">${ct.product.name}</td>
										<td scope="row">${ct.product.price}</td>
										<td scope="row">${ct.quantity}</td>
										<td scope="row">${ct.totalPrice}</td>
									</tr>
									<c:set var="totalp" value="${totalp + ct.totalPrice}" />
								</c:forEach>
								<tr>
									<td colspan="4">Total</td>
									<td colspan="3" id="total-amount">${totalp}</td>
								</tr>

							</tbody>
						</table>

					</div>



				<div>
					<hr/>
					<input type="submit" name="operation" value="PlaceOrder" onclick="paymentFunc(${totalp})"
							class="btn btn-primary btn btn-info" />
				</div>
				</div>

			</div>

		</div>
	</sf:form>
</div>

    <!-- Payment Script -->
    <script src="${pageContext.request.contextPath}/resources/assets/js/payment.js"></script>

    <script src="https://checkout.razorpay.com/v1/checkout.js"></script>

