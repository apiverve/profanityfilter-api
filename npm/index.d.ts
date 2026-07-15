declare module '@apiverve/profanityfilter' {
  export interface profanityfilterOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface profanityfilterResponse {
    status: string;
    error: string | null;
    data: ProfanityFilterData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface ProfanityFilterData {
      isProfane:    boolean | null;
      filteredText: null | string;
      mask:         null | string;
      trimmed:      boolean | null;
      profaneWords: number | null;
  }

  export default class profanityfilterWrapper {
    constructor(options: profanityfilterOptions);

    execute(callback: (error: any, data: profanityfilterResponse | null) => void): Promise<profanityfilterResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: profanityfilterResponse | null) => void): Promise<profanityfilterResponse>;
    execute(query?: Record<string, any>): Promise<profanityfilterResponse>;
  }
}
