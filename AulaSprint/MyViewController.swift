//
//  MyViewController.swift
//  AulaSprint
//
//  Created by GISELE TOLEDO on 30/03/23.
//

import UIKit

class MyViewController: UIViewController {
    
    private lazy var backgroundImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "ceu_estrelado")
        imageView.contentMode = .scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private lazy var label: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Olá Mundo!"
        label.font = UIFont.systemFont(ofSize: 24)
        label.textColor = .white
        return label
    }()
    
    private lazy var imageViewBelowText: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "the_child_starwars")
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "SprintApp"
        
        setupSubviews()
        setupConstraints()
    }
    
    private func setupSubviews() {
        view.addSubview(backgroundImageView)
        view.addSubview(label)
        view.addSubview(imageViewBelowText)
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            backgroundImageView.topAnchor.constraint(equalTo: view.topAnchor),
            backgroundImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            backgroundImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            backgroundImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            
            imageViewBelowText.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 20),
            imageViewBelowText.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            imageViewBelowText.widthAnchor.constraint(equalToConstant: 200),
            imageViewBelowText.heightAnchor.constraint(equalToConstant: 200)
        ])
    }
}

