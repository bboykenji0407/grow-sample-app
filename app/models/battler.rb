class Battler < ActiveHash::Base
  self.data = [
    { id: 1, name: 'バトラーID' },
    { id: 2, name: 'battler-1' },
    { id: 3, name: 'battler-2' },
    { id: 4, name: 'battler-3' },
    { id: 5, name: 'battler-4' },
    { id: 6, name: 'battler-5' },
    { id: 7, name: 'battler-6' },
    { id: 8, name: 'battler-7' },
    { id: 9, name: 'battler-8' },
    { id: 10, name: 'battler-9' },
    { id: 11, name: 'battler-10' },
    { id: 12, name: 'battler-11' },
    { id: 13, name: 'battler-12' },
    { id: 14, name: 'battler-13' },
    { id: 15, name: 'battler-14' },
    { id: 16, name: 'battler-15' },
    { id: 17, name: 'battler-16' },
    { id: 18, name: 'battler-17' },
    { id: 19, name: 'battler-18' },
    { id: 20, name: 'battler-19' },
    { id: 21, name: 'battler-20' },
    { id: 22, name: 'battler-21' },
    { id: 23, name: 'battler-22' },
    { id: 24, name: 'battler-23' },
    { id: 25, name: 'battler-24' },
    { id: 26, name: 'battler-25' },
    { id: 27, name: 'battler-26' },
    { id: 28, name: 'battler-27' },
    { id: 29, name: 'battler-28' },
    { id: 30, name: 'battler-29' },
    { id: 31, name: 'battler-30' },
    { id: 32, name: 'battler-31' },
    { id: 33, name: 'battler-32' },
    { id: 34, name: 'battler-33' },
    { id: 35, name: 'battler-34' },
    { id: 36, name: 'battler-35' },
    { id: 37, name: 'battler-36' },
    { id: 38, name: 'battler-37' },
    { id: 39, name: 'battler-38' },
    { id: 40, name: 'battler-39' },
    { id: 41, name: 'battler-40' },
    { id: 42, name: 'battler-41' },
    { id: 43, name: 'battler-42' },
    { id: 44, name: 'battler-43' },
    { id: 45, name: 'battler-44' },
    { id: 46, name: 'battler-45' },
    { id: 47, name: 'battler-46' },
    { id: 48, name: 'battler-47' },
    { id: 49, name: 'battler-48' },
    { id: 50, name: 'battler-49' },
    { id: 51, name: 'battler-50' },
    { id: 52, name: 'battler-51' },
    { id: 53, name: 'battler-52' },
    { id: 54, name: 'battler-53' },
    { id: 55, name: 'battler-54' },
    { id: 56, name: 'battler-55' },
    { id: 57, name: 'battler-56' },
    { id: 58, name: 'battler-57' },
    { id: 59, name: 'battler-58' },
    { id: 60, name: 'battler-59' },
    { id: 61, name: 'battler-60' },
  ]

  include ActiveHash::Associations
  has_many :best16s
  has_many :best8s
  has_many :best4s
end
