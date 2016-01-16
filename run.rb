require_relative 'lib/bill_printer'


biller_printer = BillPrinter.new
biller_printer.input_list(get_buy_list)
biller_printer.print_bill

