//
//  AppDelegate.swift
//  ThoughtJar
//
//  Created by Dave Ho on 6/20/18.
//  Copyright © 2018 Thought Jar. All rights reserved.
//

import UIKit
//import Firebase
//import GoogleSignIn
import Alamofire

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {//}, GIDSignInDelegate {

    /*
    var window: UIWindow?

    func application(_ app: UIApplication, open url: URL, options: [UIApplicationOpenURLOptionsKey : Any] = [:]) -> Bool {
        return GIDSignIn.sharedInstance().handle(url, sourceApplication:options[UIApplicationOpenURLOptionsKey.sourceApplication] as? String,
                                                 annotation: [:])
    }
    
    func sign(_ signIn: GIDSignIn!, didSignInFor user: GIDGoogleUser!, withError error: Error!) {
        if let error = error {
            return
        }
        
        guard let authentication = user.authentication else {return}
        let credential = GoogleAuthProvider.credential(withIDToken: authentication.idToken, accessToken: authentication.accessToken)
        
        let parameters: Parameters = ["id_token": String(authentication.idToken),
                                      "isMobile": "1"]
        let url = "https://api.thoughtjar.net/authenticate"
        //let url = "http://localhost:5000/authenticate"
        //let url = "http://198.168.1.2:5000/authenticate"
        Alamofire.request(url, method: .post, parameters: parameters).responseJSON {response in
            print("authenticating")
            if let result = response.result.value {
                let JSON = result as! NSDictionary
                UserDefaults.standard.set((JSON["access-token"])!, forKey: "access-token") //set access-token
                UserDefaults.standard.set((JSON["email"])!, forKey: "email")  //email
                UserDefaults.standard.set((JSON["name"])!, forKey: "name") //name
            }
            let transition = CATransition()
            transition.duration = 0.5
            transition.type = kCATransitionFade
            //transition.subtype = kCATransitionFromBottom
            transition.timingFunction = CAMediaTimingFunction(name:kCAMediaTimingFunctionEaseInEaseOut)
            self.window?.rootViewController!.view.window!.layer.add(transition, forKey: kCATransition)
            let vc = self.window?.rootViewController!.storyboard?.instantiateViewController(withIdentifier: "navController") as! UINavigationController
            //self.window?.rootViewController!.navigationController!.pushViewController(vc, animated: false)
            self.window?.rootViewController!.present(vc, animated: false, completion: nil)
            //self.window?.rootViewController!.performSegue(withIdentifier: "LoginToJarList", sender: nil)
        }
    }
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        FirebaseApp.configure()
        
        GIDSignIn.sharedInstance().clientID = FirebaseApp.app()?.options.clientID
        GIDSignIn.sharedInstance().delegate = self
        
        
        return true
    }
    */
    
    var window: UIWindow?
    
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }
    
    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

