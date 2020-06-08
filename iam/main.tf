resource "aws_iam_user" "iamuser" {
  name = "SuperUser"
}

resource "aws_iam_policy" "aws_policy" {
  name = "superuserpolicy"
  policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": "*",
            "Resource": "*"
        }
    ]
}
  EOF
}

resource "aws_iam_policy_attachment" "policybind" {
  name = "superpriviledge"
  users = ["${aws_iam_user.iamuser.name}"]
  policy_arn = "${aws_iam_policy.aws_policy.arn}"
}
