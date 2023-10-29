# challenges
=======
This is an attempt to answer an interview question. I don't remember the exact description of the question, so not as helpful as I'd wish. But the question is the following lines.

Given a list of numbers, I want to combine them in such a way that the numbers are never combined with the next (based on their position in the array), and the their position must always be crescent (index 1 must come before index 2).

For examples. Given the number:
```ruby
data = [10, 20, 40, 80, 160, 320]
```

A few valid combinations would be:
```ruby
valid1 = [10, 40, 160]
valid2 = [10, 40, 320]
valid3 = [80, 320]
```

Now. What is maximum sam of all valid combination?

For example, given the 2 valid combination above, the `valid3` combination would be selected, because its sum is higher than the others:

```ruby
sum1 = 210
sum2 = 370
sum3 = 400
```

The solution is writhen in `trips/trips.rb`, and tests are provided in `spec/trips/trips_spec.rb`
