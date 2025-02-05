//
//  ScheduleViewModel.swift
//  AstrosBaseball2
//
//  Created by Elmer Arce on 2/3/25.
//

import Foundation

class ScheduleViewModel: ObservableObject
{
    @Published var schedule: Schedule?
    @Published var errorMessage: String?
    
    private let service = Service()
    
    init()
    {
        Task { await fetchSchedule() }
    }
    
    @MainActor
    func fetchSchedule() async
    {
        do
        {
            let fetchedSchedule = try await service.fetchSchedule()
            self.schedule = fetchedSchedule
        }
        catch
        {
            guard let error = error as? APIError else {return}
            self.errorMessage = error.customDescription
        }
    }
}
