
// const paymentScript = (() => {
    const paymentFunc = (amount) => {
        console.log("payment started..")
        // let amount = $("#total-amount").val()
        console.log(amount)

        $.ajax({
            url: '/Food-Delivery/payment/order',
           // url: '@Url.Action("createOrder", "PaymentController")',
            //url: '/pay',
            data: JSON.stringify({
                amount: amount,
                info: 'order_request',
            }),
            contentType: 'application/json',
            type: 'POST',
            dataType: 'json',
            success: function(response) {
                console.log(response)
                if(response.status == "created") {
                    let options = {
                        key: 'rzp_test_gOmh5HNq5479F1',
                        amount: response.amount,
                        currency: 'INR',
                        name: 'Kumar Hotel',
                        description: 'Payment',
                        image: 'https://i.pinimg.com/736x/87/99/06/879906d5d9fc255ebe8252a7671264e0.jpg',
                        order_id: response.id,
                        handler: function(response) {
                            console.log('PAYMENT Response: ', response)
                            console.log(response.razorpay_payment_id)
                            console.log(response.razorpay_order_id)
                            console.log(response.razorpay_signature)
                            console.log("Payment Successful!!")
                            alert("Payment Successful!!")
                        },
                        "prefill": {
                            "name": "Bablu Kumar",
                            "email": "bablu.kumar@gmail.com",
                            "contact": "9999999999"
                        },
                        "notes": {
                            "address": "Kumar Hotel, Near BMS College"
                        },
                        "theme": {
                            "color": "#3399cc"
                        }
                    }

                    let rzp = new Razorpay(options);
                    rzp.on('payment.failed', function (response){
                        console.log(response.error.code);
                        console.log(response.error.description);
                        console.log(response.error.source);
                        console.log(response.error.step);
                        console.log(response.error.reason);
                        console.log(response.error.metadata.order_id);
                        console.log(response.error.metadata.payment_id);
                        alert("Oops payment failed!")
                    });
                    rzp.open();
                }
            },
            error: function(error) {
                console.log(error)
                alert("something went wrong!!")
            }
        })
    }
// })()
