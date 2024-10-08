{
    "Version": "2012-10-17", 
    "Statement": [ 
        { 
            "Effect": "Allow",
            "Action": [ 
                "ec2:RunInstances", 
                "ec2:TerminateInstances", 
                "ec2:StartInstances",
                "ec2:StopInstances"
            ],
            "Resource": "${arn}" 
        }, 
        { 
            "Effect": "Allow", 
            "Action": [ 
                "ec2:CreateTags", 
                "ec2:DescribeInstances",
                "ec2:DescribeInstanceStatus",
                "ec2:DescribeAddresses", 
                "ec2:AssociateAddress",
                "ec2:DisassociateAddress",
                "ec2:DescribeRegions",
                "ec2:DescribeAvailabilityZones"
            ], 
            "Resource": "${arn}"
        } 
    ] 
}