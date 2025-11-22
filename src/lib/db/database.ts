// VoteOut Database Type Definitions
// Auto-generated types for Supabase database schema
// Simplified for public service model (no auth required for core features)

export type Json =
  | string
  | number
  | boolean
  | null
  | { [key: string]: Json }
  | Json[];

export interface Database {
  public: {
    Tables: {
      ballot_cache: {
        Row: {
          id: string;
          normalized_address: string;
          election_id: string;
          ballot_data: Json;
          created_at: string;
          expires_at: string;
        };
        Insert: {
          id?: string;
          normalized_address: string;
          election_id: string;
          ballot_data: Json;
          created_at?: string;
          expires_at: string;
        };
        Update: {
          id?: string;
          normalized_address?: string;
          election_id?: string;
          ballot_data?: Json;
          created_at?: string;
          expires_at?: string;
        };
        Relationships: [];
      };
      mailing_queue: {
        Row: {
          id: string;
          ballot_cache_id: string | null;
          voter_address: string;
          mailing_address: string;
          email: string | null;
          status: 'pending' | 'processing' | 'sent' | 'failed' | 'cancelled';
          lob_mail_id: string | null;
          tracking_url: string | null;
          error_message: string | null;
          created_at: string;
          processed_at: string | null;
          sent_at: string | null;
        };
        Insert: {
          id?: string;
          ballot_cache_id?: string | null;
          voter_address: string;
          mailing_address: string;
          email?: string | null;
          status?: 'pending' | 'processing' | 'sent' | 'failed' | 'cancelled';
          lob_mail_id?: string | null;
          tracking_url?: string | null;
          error_message?: string | null;
          created_at?: string;
          processed_at?: string | null;
          sent_at?: string | null;
        };
        Update: {
          id?: string;
          ballot_cache_id?: string | null;
          voter_address?: string;
          mailing_address?: string;
          email?: string | null;
          status?: 'pending' | 'processing' | 'sent' | 'failed' | 'cancelled';
          lob_mail_id?: string | null;
          tracking_url?: string | null;
          error_message?: string | null;
          created_at?: string;
          processed_at?: string | null;
          sent_at?: string | null;
        };
        Relationships: [
          {
            foreignKeyName: 'mailing_queue_ballot_cache_id_fkey';
            columns: ['ballot_cache_id'];
            referencedRelation: 'ballot_cache';
            referencedColumns: ['id'];
          },
        ];
      };
      representatives: {
        Row: {
          id: string;
          name: string;
          office: string;
          level: 'federal' | 'state' | 'local';
          state: string | null;
          district: string | null;
          jurisdiction: string | null;
          party: string | null;
          phone: string | null;
          email: string | null;
          website: string | null;
          twitter: string | null;
          facebook: string | null;
          youtube: string | null;
          office_address: string | null;
          term_start: string | null;
          term_end: string | null;
          photo_url: string | null;
          source: string | null;
          external_id: string | null;
          created_at: string;
          updated_at: string;
        };
        Insert: {
          id?: string;
          name: string;
          office: string;
          level: 'federal' | 'state' | 'local';
          state?: string | null;
          district?: string | null;
          jurisdiction?: string | null;
          party?: string | null;
          phone?: string | null;
          email?: string | null;
          website?: string | null;
          twitter?: string | null;
          facebook?: string | null;
          youtube?: string | null;
          office_address?: string | null;
          term_start?: string | null;
          term_end?: string | null;
          photo_url?: string | null;
          source?: string | null;
          external_id?: string | null;
          created_at?: string;
          updated_at?: string;
        };
        Update: {
          id?: string;
          name?: string;
          office?: string;
          level?: 'federal' | 'state' | 'local';
          state?: string | null;
          district?: string | null;
          jurisdiction?: string | null;
          party?: string | null;
          phone?: string | null;
          email?: string | null;
          website?: string | null;
          twitter?: string | null;
          facebook?: string | null;
          youtube?: string | null;
          office_address?: string | null;
          term_start?: string | null;
          term_end?: string | null;
          photo_url?: string | null;
          source?: string | null;
          external_id?: string | null;
          created_at?: string;
          updated_at?: string;
        };
        Relationships: [];
      };
      usage_stats: {
        Row: {
          id: string;
          event_type: 'ballot_lookup' | 'pdf_download' | 'mailing_request';
          state: string | null;
          county: string | null;
          zip_code: string | null;
          created_at: string;
        };
        Insert: {
          id?: string;
          event_type: 'ballot_lookup' | 'pdf_download' | 'mailing_request';
          state?: string | null;
          county?: string | null;
          zip_code?: string | null;
          created_at?: string;
        };
        Update: {
          id?: string;
          event_type?: 'ballot_lookup' | 'pdf_download' | 'mailing_request';
          state?: string | null;
          county?: string | null;
          zip_code?: string | null;
          created_at?: string;
        };
        Relationships: [];
      };
    };
    Views: {
      daily_mailing_stats: {
        Row: {
          date: string | null;
          total_requests: number | null;
          sent: number | null;
          failed: number | null;
          pending: number | null;
        };
        Relationships: [];
      };
      ballot_lookups_by_state: {
        Row: {
          state: string | null;
          lookups: number | null;
          date: string | null;
        };
        Relationships: [];
      };
    };
    Functions: {
      delete_old_ballot_cache: {
        Args: Record<string, never>;
        Returns: void;
      };
    };
    Enums: {
      [_ in never]: never;
    };
    CompositeTypes: {
      [_ in never]: never;
    };
  };
}
