<config.mk

results/%_EA.done:	data/%.fa
	set -x
	mkdir -p `dirname $target`
	touch $target"_build"
	extendalign \
		--query_fasta $prereq \
		--subject_fasta $SUBJECT \
		--output_dir 'results/'$stem \
		--blastn_max_target_seqs $BLASTN_MAX_TARGET_SEQS \
		--blastn_evalue $BLASTN_EVALUE \
		--number_of_hits $NUMBER_OF_HITS \
		--blastn_strand $BLASTN_STRAND \
		--blastn_threads $BLASTN_THREADS \
	&& mv $target"_build" $target
