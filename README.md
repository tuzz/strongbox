<p align="center">
  <a href="https://github.com/tuzz/strongbox">
    <img src="https://github.com/tuzz/strongbox/raw/master/header.png" alt="Strongbox" />
  </a>
  <br/><br/>
  <a href="https://github.com/tuzz/strongbox">
    <img src="https://github.com/tuzz/strongbox/raw/master/strongbox.jpg" alt="Strongbox" />
  </a>
  <br/><br/>
  This is where I store my precious pangrams.
</p>
<br/>

---

## Create a job

```
POST /job/some-id

{
  "prefix": "This sentence has",
  "join": "and"
}
```

This method creates a pangram job to be computed.

## Get a job

```
GET /job/some-id

{
  "prefix": "This sentence has",
  "join": "and",
  "status": "pending"
}
```

This method gets a job by an id.

The status will be one of either `pending`, `running` or `complete`.

If the job is complete, it will contain a `solution` property:

```
{
  "prefix": "This sentence has",
  "join": "and",
  "status": "complete",
  "solution": "This sentence has three a's, one b, two c's, ..."
}
```

If the job has no solutions, the `solution` property will be `NULL`.
