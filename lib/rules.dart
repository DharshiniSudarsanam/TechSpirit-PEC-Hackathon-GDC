final Map<String, Map<String, Map<String, dynamic>>> rulesData = {
  "Germany": {
    "Tourism": {
      "allowed": ["Clothes", "Camera", "Personal electronics"],
      "notAllowed": ["Weapons", "Explosives"],
      "conditional": ["Liquids <100ml", "Medicines with prescription"],
      "documents": [
        "Passport (6 months validity)",
        "Schengen Tourist Visa",
        "Hotel booking",
        "Return ticket",
        "Travel insurance"
      ],
      "bannedApps": ["Illegal torrent apps"],
      "culture": ["No loud public behavior", "Follow traffic rules"],
      "smartAlerts": [
        "Liquids above 100ml will be confiscated",
        "Carry printed hotel booking at immigration"
      ],
      "commonMistakes": [
        "Overpacking liquids",
        "Not carrying travel insurance proof"
      ],
    },

    "Study": {
      "allowed": ["Books", "Laptop"],
      "notAllowed": ["Weapons"],
      "conditional": ["Medicines"],
      "documents": [
        "Passport",
        "Student Visa",
        "University admission letter",
        "Blocked account proof",
        "Health insurance"
      ],
      "bannedApps": ["Pirated content apps"],
      "culture": ["Respect academic rules"],
      "smartAlerts": [
        "Blocked account proof is mandatory",
        "Health insurance is checked at entry"
      ],
      "commonMistakes": [
        "Missing university letter",
        "Wrong visa category"
      ],
    },

    "Work": {
      "allowed": ["Laptop", "Work documents"],
      "notAllowed": ["Political material"],
      "conditional": ["Medicines"],
      "documents": [
        "Passport",
        "Work Visa",
        "Offer letter",
        "Medical insurance"
      ],
      "bannedApps": ["Unlicensed VoIP apps"],
      "culture": ["Punctuality is expected"],
      "smartAlerts": [
        "Work visa must match employer",
        "Medical insurance checked"
      ],
      "commonMistakes": [
        "Tourist visa misuse",
        "Missing offer letter"
      ],
    },

    "Business": {
      "allowed": ["Laptop", "Business documents"],
      "notAllowed": ["Cash above allowed limit"],
      "conditional": ["Medicines"],
      "documents": [
        "Passport",
        "Business Visa",
        "Invitation letter",
        "Return ticket"
      ],
      "bannedApps": ["Unlicensed financial apps"],
      "culture": ["Formal dress code"],
      "smartAlerts": [
        "Invitation letter required at immigration",
        "Cash limits strictly enforced"
      ],
      "commonMistakes": [
        "Excess cash",
        "Missing invitation letter"
      ],
    }
  },

  "UAE": {
    "Tourism": {
      "allowed": ["Clothes", "Camera", "Personal electronics"],
      "notAllowed": ["Alcohol", "E-cigarettes", "Drugs"],
      "conditional": ["Medicines with prescription"],
      "documents": [
        "Passport (6 months validity)",
        "Tourist Visa",
        "Hotel booking",
        "Return ticket",
        "Travel insurance"
      ],
      "bannedApps": ["Dating apps", "VPN misuse", "VoIP calling apps"],
      "culture": ["Dress modestly", "No public affection"],
      "smartAlerts": [
        "Alcohol without permit is punishable",
        "Public behavior is strictly monitored"
      ],
      "commonMistakes": [
        "Carrying banned medicines",
        "Using VPN illegally"
      ],
    },

    "Study": {
      "allowed": ["Books", "Laptop"],
      "notAllowed": ["Political material"],
      "conditional": ["Medicines with prescription"],
      "documents": [
        "Passport",
        "Student Visa",
        "University admission letter",
        "Medical insurance"
      ],
      "bannedApps": ["VPN misuse"],
      "culture": ["Dress conservatively"],
      "smartAlerts": [
        "Student visa must match institution",
        "Medical insurance is mandatory"
      ],
      "commonMistakes": [
        "Wrong visa category",
        "Missing admission letter"
      ],
    },

    "Work": {
      "allowed": ["Laptop", "Work documents"],
      "notAllowed": ["Political content"],
      "conditional": ["Medicines"],
      "documents": [
        "Passport",
        "Work Visa",
        "Offer letter",
        "Medical fitness certificate"
      ],
      "bannedApps": ["Unlicensed VoIP apps"],
      "culture": ["Strict law compliance"],
      "smartAlerts": [
        "Tourist visa cannot be used for work",
        "Medical fitness is checked"
      ],
      "commonMistakes": [
        "Working on tourist visa",
        "Missing medical certificate"
      ],
    },

    "Business": {
      "allowed": ["Laptop", "Business documents"],
      "notAllowed": ["Unapproved promotional material"],
      "conditional": ["Medicines"],
      "documents": [
        "Passport",
        "Business Visa",
        "Invitation letter",
        "Return ticket"
      ],
      "bannedApps": ["Unlicensed financial apps"],
      "culture": ["Formal business behavior"],
      "smartAlerts": [
        "Invitation letter required at entry",
        "Meetings may be verified"
      ],
      "commonMistakes": [
        "Missing invitation letter",
        "Overstaying visa"
      ],
    }
  },

  "Japan": {
    "Tourism": {
      "allowed": ["Clothes", "Camera", "Personal electronics"],
      "notAllowed": ["Drugs", "Weapons"],
      "conditional": ["Medicines require approval"],
      "documents": [
        "Passport",
        "Tourist Visa",
        "Return ticket"
      ],
      "bannedApps": ["Illegal gambling apps"],
      "culture": ["Be quiet in public", "No littering"],
      "smartAlerts": [
        "Some medicines are banned in Japan",
        "Return ticket may be checked"
      ],
      "commonMistakes": [
        "Carrying restricted medicines",
        "Loud public behavior"
      ],
    },

    "Study": {
      "allowed": ["Books", "Laptop"],
      "notAllowed": ["Drugs"],
      "conditional": ["Medicines"],
      "documents": [
        "Passport",
        "Student Visa",
        "University acceptance letter"
      ],
      "bannedApps": ["Pirated software"],
      "culture": ["Follow campus discipline"],
      "smartAlerts": [
        "Attendance is strictly monitored",
        "Visa validity is checked"
      ],
      "commonMistakes": [
        "Missing acceptance letter",
        "Part-time work violations"
      ],
    },

    "Work": {
      "allowed": ["Laptop", "Official documents"],
      "notAllowed": ["Drugs"],
      "conditional": ["Medicines require approval"],
      "documents": [
        "Passport",
        "Work Visa",
        "Employment contract"
      ],
      "bannedApps": ["Illegal software"],
      "culture": ["Punctuality is critical"],
      "smartAlerts": [
        "Work visa tied to employer",
        "Overtime laws are strict"
      ],
      "commonMistakes": [
        "Changing job without visa update",
        "Late arrival to work"
      ],
    },

    "Business": {
      "allowed": ["Laptop", "Business documents"],
      "notAllowed": ["Drugs"],
      "conditional": ["Medicines"],
      "documents": [
        "Passport",
        "Business Visa",
        "Invitation letter"
      ],
      "bannedApps": ["Pirated software"],
      "culture": ["Formal greetings required"],
      "smartAlerts": [
        "Invitation letter checked at immigration",
        "Meetings are time-sensitive"
      ],
      "commonMistakes": [
        "Informal behavior",
        "Missing invitation letter"
      ],
    }
  }
};
