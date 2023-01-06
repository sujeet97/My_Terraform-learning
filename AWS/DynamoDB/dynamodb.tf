resource "aws_dynamodb_table" "cars" {   ## It will create the DynamoDB 
  name = "cars"
  hash_key = "VIN"
  billing_mode = "PAY_PER_REQUEST"
  attribute {
    name = "VIN"
    type = "S"
  }
}

resource "aws_dynamodb_table_item" "car-items" {  ## This block will add the data in the table this is not recomended way to add the large amount of data in the table
  table_name = aws_dynamodb_table.cars.name
  hash_key = aws_dynamodb_table.cars.hash_key
  item = <<EOF
  {
    "Manufacturer": {"S": "Toyota"},
    "Make": {"S": "Corolla"},
    "Year": {"N": 2004},
    "VIN": {"S": "4YWFXZR"},
  }

  EOF
}