//Hooks into Springboard
%hook SpringBoard

//The method that is called when springboard is launched
-(void)applicationDidFinishLaunching :(UIApplication *)application{
  //Calls its original code
  %orig;

  //After original code is done we craft an alert view
  UIAlertView *SBLaunched = [[UIAlertView alloc] initWithTitle:@"Success"
                            message:@"SpringBoard Has Launched"
                            delegate:nil
                            cancelButtonTitle:@"Close"
                            otherButtonTitles:nil];

      [SBLaunched show];    //Shows the alert
      [SBLaunched release]; //Dont Forget to clean up ;P


}

%end //End hooking of SpringBoard
