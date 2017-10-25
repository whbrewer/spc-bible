%rebase('base.tpl')
%include('apps/alert')
<form class="form-horizontal" action="/confirm" method="post" novalidate>
<input type="hidden" name="app" value="{{app}}">
%if defined('cid'):
<input type="hidden" name="cid" value="{{cid}}">
%end
<div class="col-xs-12 visible-xs" style="height:5px"></div>
<div class="col-xs-12" style="height:5px"></div>
<ul class="nav nav-pills" role="tablist">
	<li role="presentation" class="active">
		<a href="#basic" role="tab" data-toggle="tab">basic</a>
	</li>
</ul>
<div class="tab-content">
<div role="tabpanel" class="tab-pane fade in active" id="basic">
	<div class="form-group">
		<label class="control-label col-xs-6">
			version:</label>
		<div class="col-xs-12 col-sm-6">
			<select class="form-control" name="version">
			%opts = {'kjv': 'KJV', 'cuv': 'Chinese'}
			%for key, value in sorted(opts.items()):
				%if key == version:
					<option selected value="{{key}}">{{value}}</option>
				%else:
					<option value="{{key}}">{{value}}</option>
				%end
			%end
			</select>
		</div>
	</div>
	<div class="form-group">
		<label class="control-label col-xs-6">
			book:</label>
		<div class="col-xs-12 col-sm-6">
			<select class="form-control" name="book">
			%opts = {'gen': 'Genesis', 'exo': 'Exodus', 'lev': 'Leviticus', 'num': 'Numbers', 'deu': 'Deuteronomy', 'jos': 'Joshua', 'jdg': 'Judges', 'rut': 'Ruth', '1sa': '1 Samuel', '2sa': '2 Samuel', '1ki': '1 Kings', '2ki': '2 Kings', 'ezr': 'Ezra', 'neh': 'Nehemiah', 'est': 'Esther', 'job': 'Job', 'psa': 'Psalms', 'ecc': 'Ecclesiastes', 'sos': 'Song of Solomon', 'isa': 'Isaiah', 'jer': 'Jeremiah', 'lam': 'Lamentations', 'eze': 'Ezekiel', 'dan': 'Daniel', 'hos': 'Hosea', 'joe': 'Joel', 'amo': 'Amos', 'oba': 'Obadiah', 'jon': 'Jonah', 'mic': 'Micah', 'nah': 'Nahum', 'hab': 'Habbakuk', 'zep': 'Zephaniah', 'hag': 'Haggai', 'zec': 'Zechariah', 'mal': 'Malachi', 'mat': 'Matthew', 'mar': 'Mark', 'luk': 'Luke', 'joh': 'John', 'act': 'Acts', 'rom': 'Romans', '1co': '1 Corithians', '2co': '2 Corinthians', 'gal': 'Galatians', 'eph': 'Ephesians', 'php': 'Philippians', 'col': 'Colossians', '1th': '1 Thessalonians', '2th': '2 Thessalonians', '1ti': '1 Timothy', '2ti': '2 Timothy', 'tit': 'Titus', 'phm': 'Philemon', 'heb': 'Hebrews', 'jam': 'James', '1pe': '1 Peter', '2pe': '2 Peter', '1jo': '1 John', '2jo': '2 John', '3jo': '3 John', 'jde': 'Jude', 'rev': 'Revelation'}
			%for key, value in sorted(opts.items()):
				%if key == book:
					<option selected value="{{key}}">{{value}}</option>
				%else:
					<option value="{{key}}">{{value}}</option>
				%end
			%end
			</select>
		</div>
	</div>
	<div class="form-group">
		<label class="control-label col-xs-6">
			verse:</label>
		<div class="col-xs-12 col-sm-6">
			<input type="text" class="form-control" name="verse" value="{{verse}}"/>
		</div>
	</div>
</div>

</div>
<div class="col-xs-12" style="height:5px"></div>
<div class="form-group">
	<label for="desc" style="text-align:right" class="control-label col-sm-4 hidden-xs">
		<a href="#" data-toggle="tooltip" title="Separate labels by commas">Labels:</a></label>
	<div class="hidden-xs col-sm-6">
		<input type="text" id="desc" name="desc" class="form-control" style="width:100%"
			data-role="tagsinput" title="e.g. v2.5.1,bottleneck">
	</div>
	<div class="col-xs-2">
		<button type="submit" class="btn btn-success"> <!-- pull-right -->
		Continue <em class="glyphicon glyphicon-forward"></em> </button>
	</div>
</div>
</form>
