resource "aws_iam_user" "user" {
  name = "acy-admin"
}

resource "aws_iam_policy" "administrator_access" {
  name   = "AdministratorAccess"
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

resource "aws_iam_user_policy_attachment" "administrator_access_attachment" {
  user       = aws_iam_user.user.name
  policy_arn = aws_iam_policy.administrator_access.arn
}

