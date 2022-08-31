//
//  ViewController.swift
//  PostApp
//
//  Created by David Khachidze on 29.08.2022.
//

import UIKit
import SnapKit

class PostsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var postsTitle = UILabel()
    var postDataSource = ["post", "post", "post", "post"]
    var postsTableView = UITableView()
    let identifire = "Cell"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        createPostTableView()
        createTopSpase()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return postDataSource.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = postsTableView.dequeueReusableCell(withIdentifier: identifire, for: indexPath) as? PostsTableViewCell else { return UITableViewCell() }
        let row = postDataSource[indexPath.row]
        cell.createCustomCell(title: row)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    func createPostTableView() {
        postsTableView.register(PostsTableViewCell.self, forCellReuseIdentifier: identifire)
        postsTableView.dataSource = self
        postsTableView.delegate = self
        view.addSubview(postsTableView)
        postsTableView.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide).inset(0)
            make.bottom.leading.trailing.equalToSuperview().inset(0)
        }
    }
    func createTopSpase() {
        
        
        postsTitle.backgroundColor = .clear
        postsTitle.textColor = .black
        postsTitle.font = UIFont.systemFont(ofSize: 20)
        postsTitle.text = "Title"
        navigationController?.navigationBar.addSubview(postsTitle)
        postsTitle.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.centerX.equalToSuperview()
        }
    }
    


}

