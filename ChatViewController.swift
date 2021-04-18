

import UIKit
import JSQMessagesViewController
import ProgressHUD
import IQAudioRecorderController
import IDMPhotoBrowser
import AVFoundation
import AVKit
import FirebaseFirestore

class ChatViewController: JSQMessagesViewController {
    
    var outgoingBubble = JSQMessagesBubbleImageFactory()?.outgoingMessagesBubbleImage(with: UIColor.jsq_messageBubbleBlue())
    
    var incomingBubble = JSQMessagesBubbleImageFactory()?.incomingMessagesBubbleImage(with: UIColor.jsq_messageBubbleLightGray())
    // jsq_updateCollectionViewInsets
   
    override func viewDidLayoutSubviews() {
        perform(Selector(("jsq_updateCollectionViewInsets")))
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // The string identifier that uniquely identifies the current user sending messages.
        
        self.senderId=FUser.currentId()
        // The display name of the current user who is sending messages.
        self.senderDisplayName=FUser.currentUser()!.firstname
        // toolbarBottomLayoutGuide
          
        
        let constrain =  perform(Selector(("toolbarBottomLayoutGuide")))?.takeUnretainedValue() as! NSLayoutConstraint
        constrain.priority=UILayoutPriority(rawValue: 1000)
        self.inputToolbar.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor).isActive=true
   
        
        

    }
    

   

}
