//
//  ProfileViewController.swift
//  TorcedorFC
//
//  Created by Marcelo Falcao Costa Filho on 26/08/22.
//

import UIKit
import FirebaseAuth
import FirebaseCore

class ProfileViewController: UIViewController {

    var profileScreen: ProfileScreen = .init()
    var viewModel: ProfileViewModel = .init()
    
    override func loadView() {
        self.profileScreen = ProfileScreen()
        self.view = self.profileScreen
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        profileScreen.delegate(delegate: self)
        configView()
    }
    
    private func configView() {
        profileScreen.nameLabel.text = viewModel.getName
        profileScreen.emailLabel.text = viewModel.getEmail
    }
    
//    private func openGalleryPickerView() {
//        var configuration = PHPickerConfiguration(photoLibrary: .shared())
//        configuration.filter = .images
//        configuration.selectionLimit = 1
//
//        let imagePicker = PHPickerViewController(configuration: configuration)
//        imagePicker.delegate = self
//
//        present(imagePicker, animated: true)
//    }
//
//    private func openCameraPickerView() {
//        let imagePicker = UIImagePickerController()
//        imagePicker.sourceType = .camera
//        imagePicker.allowsEditing = true
//        imagePicker.delegate = self
//
//        present(imagePicker, animated: true)
//    }
    
}



extension ProfileViewController: ProfileScreenProtocol {
    func actionExitButton() {
            let firebaseAuth = Auth.auth()
            do {
                try firebaseAuth.signOut()
                let loginViewController: LoginViewController = LoginViewController()

                navigationController?.pushViewController(loginViewController, animated: false)
            } catch let signOutError as NSError {
                print("Error signing out: %@", signOutError)
            }
    }
    
    func actionRedefinePasswordButton() {
        let vc: RedefinePasswordViewController = RedefinePasswordViewController()
        
        navigationController?.pushViewController(vc, animated: false)
    }
}

////MARK: - PHPickerViewControllerDelegate
//extension ProfileViewController: PHPickerViewControllerDelegate {
//    func picker(_ picker: PHPickerViewController, didFinishPicking results: [PHPickerResult]) {
//        picker.dismiss(animated: true)
//
//        results.forEach { result in
//            result.itemProvider.loadObject(ofClass: UIImage.self) { success, error in
//                guard let image = success as? UIImage, error == nil else { return }
//                DispatchQueue.main.async {
//                    self.profileScreen.userImageView.image = image
//                }
//            }
//        }
//    }
//}

//MARK: - UIImagePickerControllerDelegate, UINavigationControllerDelegate
extension ProfileViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        guard let profileImage = info[.originalImage] as? UIImage else { return }
        
        profileScreen.userImageView.image = profileImage
        dismiss(animated: true)
    }
}
