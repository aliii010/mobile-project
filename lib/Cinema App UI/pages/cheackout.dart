import 'package:flutter/material.dart';
import 'package:flutter_ui_design/Cinema%20App%20UI/consts.dart';
import 'package:flutter_ui_design/Cinema%20App%20UI/models/movie_model.dart';
import 'package:flutter_ui_design/Cinema%20App%20UI/pages/cinema_main_screen.dart';

class MovieCheckoutApp extends StatelessWidget {
  const MovieCheckoutApp(
      {super.key,
      required this.price,
      required this.date,
      required this.hour,
      required this.seats,
      required this.movie});
  final String price;
  final String date;
  final String hour;
  final List<String> seats;
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movie Reservation Checkout',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MovieCheckoutPage(
        seats: seats,
        price: "\$${seats.length * 20}.00",
        date: date,
        hour: hour.toString(),
        movie: movie,
      ),
    );
  }
}

class MovieCheckoutPage extends StatelessWidget {
  const MovieCheckoutPage(
      {super.key,
      required this.price,
      required this.date,
      required this.hour,
      required this.seats,
      required this.movie});
  final String price;
  final String date;
  final String hour;
  final List<String> seats;
  final Movie movie;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Checkout',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: appBackgroundColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            MovieDetails(date: date, hour: hour, movie: movie),
            const SizedBox(height: 20),
            SeatSelection(seats: seats),
            const SizedBox(height: 20),
            const PaymentOptions(),
            const SizedBox(height: 20),
            const CheckoutSummary(),
            const SizedBox(height: 20),
            const CheckoutButton(),
          ],
        ),
      ),
    );
  }
}

class MovieDetails extends StatelessWidget {
  const MovieDetails(
      {super.key, required this.date, required this.hour, required this.movie});

  final String date;
  final String hour;
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            movie.poster, // Movie poster placeholder
            width: 100,
            height: 150,
            fit: BoxFit.cover,
          ),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                movie.title,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              SizedBox(
                  width: MediaQuery.sizeOf(context).width * .5,
                  child: Text(
                    'Showtime: ${date.substring(0, 5)}, $hour PM',
                    overflow: TextOverflow.ellipsis,
                  )),
              const SizedBox(height: 8),
              SizedBox(
                  width: MediaQuery.sizeOf(context).width * .5,
                  child: const Text('Location: Screen 3, Main Theater')),
            ],
          ),
        ],
      ),
    );
  }
}

class SeatSelection extends StatelessWidget {
  const SeatSelection({super.key, required this.seats});
  final List<String> seats;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Selected Seats',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Wrap(
              spacing: 8.0,
              children: List.generate(seats.length, (index) {
                return Chip(label: Text('${seats[index]}'));
              })),
        ],
      ),
    );
  }
}

class PaymentOptions extends StatelessWidget {
  const PaymentOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Payment Options',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          ListTile(
            leading: Icon(Icons.credit_card),
            title: Text('Credit Card'),
          ),
          ListTile(
            leading: Icon(Icons.paypal),
            title: Text('PayPal'),
          ),
        ],
      ),
    );
  }
}

class CheckoutSummary extends StatelessWidget {
  const CheckoutSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Summary',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Tickets (2x)'),
              Text('\$20.00'),
            ],
          ),
          SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Booking Fee'),
              Text('\$2.00'),
            ],
          ),
          Divider(),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Total', style: TextStyle(fontWeight: FontWeight.bold)),
              Text('\$22.00', style: TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
        ],
      ),
    );
  }
}

class CheckoutButton extends StatelessWidget {
  const CheckoutButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 57, 57, 57),
          padding: const EdgeInsets.symmetric(vertical: 16),
        ),
        onPressed: () {
          // Add checkout action here
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: const Text('Success'),
              content: const Text('Your reservation is confirmed!'),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    Navigator.pushAndRemoveUntil(context,
                        MaterialPageRoute(builder: (context) {
                      return const CinemaMainScreen();
                    }), (route) => false);
                  },
                  child: const Text('OK'),
                ),
              ],
            ),
          );
        },
        child: const Text('Confirm Purchase',
            style: TextStyle(fontSize: 18, color: buttonColor)),
      ),
    );
  }
}
