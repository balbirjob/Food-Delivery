package in.co.online.food.delivery;

import java.util.Map;

import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.razorpay.*;

@Controller
@RequestMapping("/payment/")
public class PaymentController {
	
	@PostMapping("order")
	@ResponseBody
	public String createOrder(@RequestBody Map<String, Object> data) throws Exception {
		System.out.println("data ======= " + data);
 		System.out.println("ORDER placed Successfully.");
		
		int amt = Integer.parseInt(data.get("amount").toString());
		
		RazorpayClient client = new RazorpayClient("rzp_test_gOmh5HNq5479F1", "hldVUcP99ikUnyftRg4t9nCx");
		
        JSONObject orderRequest = new JSONObject();
        orderRequest.put("amount", amt*100); // amount in the smallest currency unit
        orderRequest.put("currency", "INR");
        orderRequest.put("receipt", "order_rcptid_11");

        Order order = client.orders.create(orderRequest);
        System.out.println(order);
        
        

		return order.toString();
	}
}