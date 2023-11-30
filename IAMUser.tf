#This module creates an IAM user

resource "aws_iam_user" "Jason" {
  name = "Jason"
  path = "/system/"

  tags = {
    tag-key = "Location-NewYork"
  }
}

resource "aws_iam_access_key" "lb" {
  user = aws_iam_user.Jason.name
}

#This module assigns a user to a group

resource "aws_iam_user_group_membership" "FiveDVenoms" {
  user = aws_iam_user.Jason.name

  groups = [
    aws_iam_group.FiveDVenoms.name
  ]
}






