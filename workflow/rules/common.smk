samples = (
    pd.read_csv(
        config["samples"],
        sep="\t",
        dtype={"sample": str, "fq1": str, "fq2": str},
        comment="#",
    )
    .set_index("sample", drop=False)
    .sort_index()
)

# def get_input_fastqs(wildcards):
#    return config["samples"][wildcards.sample]

SAMPLE = samples["sample"].tolist()


wildcard_constraints:
    sample="|".join(samples["sample"]),
    sample1="|".join(samples["sample"]),
    sample2="|".join(samples["sample"]),


combs = []
for x in itertools.combinations(SAMPLE, 2):
    combs.append("results/distances/%s_%s.distances.tsv" % (x[0], x[1]))
