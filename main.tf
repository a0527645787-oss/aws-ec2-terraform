# הגדרת הספק - מול איזה ענן אנחנו עובדים
provider "aws" {
  region = "us-east-1" # האזור הגיאוגרפי באמזון (צפון וירג'יניה)
}

# הגדרת המשאב - יצירת שרת ה-EC2
resource "aws_instance" "my_first_server" {
  ami           = "ami-0e2c8ccd4e6379617" # קוד הזיהוי של אובונטו 24.04 באזור זה
  instance_type = "t2.micro"             # סוג השרת (הגודל שלו)

  tags = {
    Name = "MyAssignmentInstance"         # הבונוס של המשימה: הוספת תגית שם לשרת
  }
}
