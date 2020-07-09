class SalaryCalculator {
  double hourlyRate;
  double fixedHoursWorked;
  double extraHoursWorked;
  double totalHoursWorked;

  SalaryCalculator(var totalHoursWorked) {
    hourlyRate = 10;
    fixedHoursWorked = 40;
    extraHoursWorked = totalHoursWorked - fixedHoursWorked;
    this.totalHoursWorked = totalHoursWorked;  
  }

  double hoursWorkedPay() {
    return hourlyRate * fixedHoursWorked;
  }

  double extraHoursWorkedPay() {
    return (totalHoursWorked - fixedHoursWorked) * (hourlyRate + hourlyRate / 2);
  }

  double grossPay() {
    return hoursWorkedPay() + extraHoursWorkedPay();
  }
}

void main(List<String> args) {
  SalaryCalculator totalEarning1 = SalaryCalculator(41.0,);
  SalaryCalculator totalEarning2 = SalaryCalculator(47.0,);
  SalaryCalculator totalEarning3 = SalaryCalculator(51.0,);

  print("First employee's salary: " + {totalEarning1.grossPay()}.toString());
  print(totalEarning2.grossPay());
  print(totalEarning3.grossPay());

}

