using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.ProfanityFilter
{
    /// <summary>
    /// Query options for the Profanity Filter API
    /// </summary>
    public class ProfanityFilterQueryOptions
    {
        /// <summary>
        /// The text to filter profanity words from
        /// </summary>
        [JsonProperty("text")]
        public string Text { get; set; }

        /// <summary>
        /// The mask to replace the profanity words with. Should be a Single Character (e.g., *)
        /// </summary>
        [JsonProperty("mask")]
        public string Mask { get; set; }

        /// <summary>
        /// Add a matches list with each filtered word and its start and end position
        /// </summary>
        [JsonProperty("details")]
        public bool? Details { get; set; }

        /// <summary>
        /// Comma-separated words the filter should not flag, up to 100 single words (e.g. hell,damn)
        /// </summary>
        [JsonProperty("allow")]
        public string Allow { get; set; }

        /// <summary>
        /// Comma-separated extra words to flag and mask, up to 100 single words
        /// </summary>
        [JsonProperty("add")]
        public string Add { get; set; }
    }
}
