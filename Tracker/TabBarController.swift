import UIKit

final class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    switchTabs()
    }

    private func switchTabs() {
        let mainVC = self.createNavigation(with: "Трекеры", and: UIImage(named: "TrackerTabBarIcon"), vc: MainScreenViewController())
        let statVC = self.createNavigation(with: "Статистика", and: UIImage(named: "StatsTabBarIcon"), vc: StatisticViewController())
        
        self.setViewControllers([mainVC, statVC], animated: true)
    }
    
    private func createNavigation(with title: String, and image: UIImage?, vc: UIViewController) -> UINavigationController {
        let navigationController = UINavigationController(rootViewController: vc)
        navigationController.tabBarItem.title = title
        navigationController.tabBarItem.image = image
        navigationController.tabBarItem.title = title
        
        
        return navigationController
    }
}
