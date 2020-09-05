<script defer src="{relative_path}/assets/nodebb.min.js?{config.cache-buster}"></script>

{{{each scripts}}}
<script defer type="text/javascript" src="{scripts.src}"></script>
{{{end}}}

<script>
    window.addEventListener('DOMContentLoaded', function () {
        require(['forum/footer']);

        <!-- IF useCustomJS -->
        {{customJS}}
        <!-- ENDIF useCustomJS -->

        $(document).ready(function () {
            ajaxify.coldLoad();
        });
    });
</script>