declare module '@apiverve/didyoumean' {
  export interface didyoumeanOptions {
    api_key: string;
    secure?: boolean;
  }

  export interface didyoumeanResponse {
    status: string;
    error: string | null;
    data: DidYouMeanData;
    code?: number;
  }


  interface DidYouMeanData {
      query:      string;
      didYouMean: string[];
  }

  export default class didyoumeanWrapper {
    constructor(options: didyoumeanOptions);

    execute(callback: (error: any, data: didyoumeanResponse | null) => void): Promise<didyoumeanResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: didyoumeanResponse | null) => void): Promise<didyoumeanResponse>;
    execute(query?: Record<string, any>): Promise<didyoumeanResponse>;
  }
}
